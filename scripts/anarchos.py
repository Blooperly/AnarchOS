# Script for building, loading, and running AnarchOS applications
import argparse

parser = argparse.ArgumentParser(
	prog = "anarchos",
	description = "Embedded systems development tools",
	epilog = "Thanks for reading..."
)

#parser.add_argument('action', type = str, help = 'build, run, stop')
parser.add_argument('-v', '--verbose', action = 'store_true')

args = parser.parse_args()
print(vars(args))