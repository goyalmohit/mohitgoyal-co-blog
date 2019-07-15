# Parse output from az pipelines list command into a nice format using python
# Below code assumes that output from 'az pipelines list' command has been stored 
# under the az-pipelines-list.json file.

import sys, json

with open("working-with-azure-devops-pipelines-at-command-line/az-pipelines-list.json", "r") as f:
   pipelines = json.load(f)
   
print(f"PipelineName \t CreationDate \t AuthoredBy \t ProjectName")
for item in pipelines:
    authored_by = item['authoredBy']['displayName']
    project_name = item['project']['name']
    print(f"{item['name']} \t {item['createdDate']} \t {authored_by} {project_name}")
