#!/bin/bash

# Couleurs pour output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}🐳 Building and starting development environment...${NC}"

# Build si nécessaire
docker-compose build

# Start
docker-compose up -d

# Attendre que le container soit prêt
sleep 2

echo -e "${GREEN}✅ Container ready!${NC}"
echo -e "${BLUE}📝 Commands:${NC}"
echo "  Enter container:  docker-compose exec dev bash"
echo "  Run Python:       docker-compose exec dev uv run python"
echo "  Run Jupyter:      docker-compose exec dev uv run jupyter notebook --ip=0.0.0.0"
echo "  Stop container:   docker-compose down"

# Option: entrer directement
read -p "Enter container now? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    docker-compose exec dev bash
fi