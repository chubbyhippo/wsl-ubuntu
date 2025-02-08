#!/usr/bin/env sh

# Define the path to the Docker configuration directory and file
DOCKER_CONFIG_DIR="$HOME/.docker"
DOCKER_CONFIG_FILE="$DOCKER_CONFIG_DIR/config.json"

# Check if the directory exists
if [ ! -d "$DOCKER_CONFIG_DIR" ]; then
  echo "Directory $DOCKER_CONFIG_DIR does not exist. Creating it..."
  mkdir -p "$DOCKER_CONFIG_DIR"
  if [ $? -ne 0 ]; then
    echo "Failed to create directory $DOCKER_CONFIG_DIR. Exiting..."
    exit 1
  fi
else
  echo "Directory $DOCKER_CONFIG_DIR already exists."
fi

# Create or overwrite the config.json file with the specified content
echo "Creating $DOCKER_CONFIG_FILE with the given content..."
(
cat <<EOL
{
    "credsStore": "pass"
}
EOL
) > "$DOCKER_CONFIG_FILE"

# Check if the file was created successfully
if [ $? -eq 0 ]; then
  echo "Successfully created $DOCKER_CONFIG_FILE."
else
  echo "Failed to create $DOCKER_CONFIG_FILE. Exiting..."
  exit 1
fi

# Verify the final content of the config.json file
echo "The content of $DOCKER_CONFIG_FILE is:"
cat "$DOCKER_CONFIG_FILE"
