#pragma once

#include "abstract_file_handler.hpp"

class Mucom88Io final : public AbstractToneBankIo
{
public:
	Mucom88Io();
	std::vector<TonePtr> load(BinaryContainer& container) const override;
	const BinaryContainer save(const std::vector<TonePtr>& bank) const override;
};
