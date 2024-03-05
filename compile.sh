# program = arg1 or 'hello'
program=${1:-'prog/hello'}

# compile the program
cd jack_compiler

# if node_modules doesn't exist, run npm install
if [ ! -d "node_modules" ]; then
  npm install
fi

# compile
npx ts-node ./src/compile.ts ../prog/os
npx ts-node ./src/compile.ts ../$program

# interpret
npx ts-node ./src/interpret.ts ./dist

cp ./dist.asm ../$program.asm

# clean up
rm -rf ./dist
rm -rf ./*.asm