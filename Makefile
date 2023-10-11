DIR=$(shell pwd)
USER=$(shell whoami)
PROFILE_DIR=$(DIR)/profile
BUILD_DIR=$(DIR)/build
TMP_DIR=$(DIR)/tmp

build: 
	sudo mkarchiso -o $(BUILD_DIR) -v -w $(TMP_DIR) $(PROFILE_DIR)
	sudo chown -R $(USER) $(BUILD_DIR)
	sudo rm -rf $(TMP_DIR)