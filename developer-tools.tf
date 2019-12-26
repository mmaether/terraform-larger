/**
 * This document outlines the process of the Developer Tools section of AWS, 
 * i.e. CodeDeploy, CodeBuild, etc.
 */

# Create Code Commit repo
resource "aws_codecommit_repository" "test" {
  repository_name = "MyTestRepository"
  description     = "This is the Sample App Repository"
}
