#pragma once

#include "chip_def.hpp"
#ifdef SINC_INTERPOLATION
#include <vector>
#include <cmath>
#endif
#include "../types.h"

namespace chip
{
	class Resampler
	{
	public:
		Resampler();
		~Resampler();

		#ifdef SINC_INTERPOLATION
		void init(uint32 srcRate, uint32 destRate, size_t maxDuration);
		#else
		void init(uint32 srcRate, uint32 destRate);
		#endif

		void setDestRate(uint32 destRate);
		#ifdef SINC_INTERPOLATION
		void setMaxDuration(size_t maxDuration);
		#endif

		sample** interpolate(sample** src, size_t nSamples, size_t intrSize);

		inline size_t calculateInternalSampleSize(size_t nSamples)
		{
			float f = nSamples * rateRatio_;
			size_t i = static_cast<size_t>(f);
			return ((f - i) ? (i + 1) : i);
		}

	private:
		int srcRate_, destRate_;
		float rateRatio_;
		
		sample* destBuf_[2];

		#ifdef SINC_INTERPOLATION
		size_t maxDuration_;
		std::vector<float> sincTable_;

		static const float F_PI_;
		static const int SINC_OFFSET_;

		void initSincTables();

		static inline float sinc(float x)
		{
			return ((!x) ? 1.0f : (std::sin(x) / x));
		}
		#endif
	};
}
