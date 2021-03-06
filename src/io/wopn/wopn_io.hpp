#pragma once

#include "../abstract_file_handler.hpp"

class WopnIo final : public AbstractToneBankIo
{
public:
	WopnIo();
	std::vector<TonePtr> load(BinaryContainer& container) const override;
	const BinaryContainer save(const std::vector<TonePtr>& bank) const override;
};
