# Parse output from az pipelines runs list command into a nice format using python
# Below code assumes that output from 'az pipelines runs list' command has been stored 
# under the az-pipelines-runs-list.json file.

import json, sys

with open("az-pipelines-runs-list.json", "r") as f:
    runs = json.load(f)

print(f"ProjectName \t PipelineName \t BuildNumber \t FinishedAt \t Result")
for item in runs:
    project_name = item['project']['name']
    pipeline_name = item['definition']['name']
    build_number = item['buildNumber']
    finish_time = item['finishTime']
    result = item['result']
    print(f"{project_name} \t {pipeline_name} \t {build_number} \t {finish_time} \t {result}")

