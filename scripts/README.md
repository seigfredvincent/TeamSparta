How to Use These Scripts
Run init.sh Script:

Navigate to your project root directory and run the initialization script to initialize Terraform:
bash
Copy code
./scripts/init.sh
Run apply.sh Script:

After initializing Terraform, apply the configurations for a specific environment by running the apply.sh script. Provide the environment as an argument (dev or prod):
bash
Copy code
./scripts/apply.sh dev
Run destroy.sh Script:

If you want to tear down your infrastructure for a specific environment, use the destroy.sh script with the appropriate environment argument:
bash
Copy code
./scripts/destroy.sh dev
Notes:
These scripts assume you are using Bash. If you're using a different shell or operating system, you may need to modify the scripts accordingly.
Ensure that the scripts are executable. You can set the executable permission using:
bash
Copy code
chmod +x scripts/*.sh