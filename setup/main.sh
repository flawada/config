cd /tmp/blueprint/blueprints


blueprints=()
i = 0

for blueprint in */; do
  i+=1
  blueprints+=("$i ) $blueprint")
done

echo $blueprint