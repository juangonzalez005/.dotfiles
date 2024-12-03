# Define targets and dependencies

# The 'linux' target runs the './bin/linux.sh' script and depends on the 'clean' target.
linux: clean
	@chmod +x ./bin/linux.sh  # Set execute permissions on the linux.sh script
	@./bin/linux.sh           # Run the linux.sh script

# The 'clean' target runs the './bin/cleanup.sh' script.
clean:
	@chmod +x ./bin/cleanup.sh # Set execute permissions on the cleanup.sh script
	@./bin/cleanup.sh          # Run the cleanup.sh script
