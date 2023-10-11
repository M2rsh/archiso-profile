DIR=$(shell pwd)
USER=$(shell whoami)
PROFILE_DIR=$(DIR)/profile
BUILD_DIR=$(DIR)/build
TMP_DIR=$(DIR)/tmp
LATEST_IMAGE=$(shell ls -t $(BUILD_DIR) | head -1)

build: 
	sudo mkarchiso -o $(BUILD_DIR) -v -w $(TMP_DIR) $(PROFILE_DIR)
	sudo chown -R $(USER) $(BUILD_DIR)
	sudo rm -rf $(TMP_DIR)

cleanup:
	rm -rf $(BUILD_DIR)

test:
	run_archiso -i $(BUILD_DIR)/$(LATEST_IMAGE)