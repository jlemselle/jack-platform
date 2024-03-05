
param (
    [string]$prog
)

Write-Host "Compiling $prog..."

# Compile the source file
Push-Location -Path "jack_compiler"
&npm install

&npx ts-node src/compile.ts ../prog/os
&npx ts-node src/compile.ts ../prog/$prog
&npx ts-node src/interpret.ts ./dist

# Copy dist.asm to the source directory
Copy-Item -Path "dist.asm" -Destination "../prog/$prog.asm"

# Clean up
Remove-Item -Path "dist.asm"
Remove-Item -Path "dist" -Recurse

Pop-Location