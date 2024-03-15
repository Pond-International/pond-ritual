# phony targets are targets that don't actually create a file
.phony: deploy

# anvil's third default address
sender := 11177d60266809dc4ce56ad21c15ad8dce8590546c770706109e6b0d03c4f4a6
RPC_URL := https://base-mainnet.g.alchemy.com/v2/mth8Rar815gWj1xV4xNqbQWZWCESDYNZ

# deploying the contract
deploy:
	@PRIVATE_KEY=$(sender) forge script script/Deploy.s.sol:Deploy --broadcast --rpc-url $(RPC_URL)

# calling sayGM()
call-contract:
	@PRIVATE_KEY=$(sender) forge script script/CallContract.s.sol:CallContract --broadcast --rpc-url $(RPC_URL)
