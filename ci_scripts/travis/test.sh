set -e

# Get into a temp directory to run test from the installed scikit learn and
# check if we do not leave artifacts
mkdir -p $TEST_DIR

cd $TEST_DIR

if [[ "$COVERAGE" == "true" ]]; then
	py.test --cov=$MODULE --pyargs $MODULE
else
	py.test --pyargs $MODULE
fi
