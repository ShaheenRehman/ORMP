#! /usr/bin/env bash

set -eo pipefail

set -x
forge script script/fee/Fee.s.sol:Fee --sig "run(uint256)" 42161 --chain-id 46    --broadcast --slow
forge script script/fee/Fee.s.sol:Fee --sig "run(uint256)" 46    --chain-id 42161 --broadcast --slow --legacy
