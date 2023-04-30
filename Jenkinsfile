pipeline {

    parameters {
        choice(
            name: 'Environment',
            choices: 'DEVELOP\nQA',
            description: 'The environment to run the tests at.'
            )
        choice(
            name: 'Browser',
            choices: 'Chrome',
            description: 'Browser to run the tests at.')
        extendedChoice(
            name: 'Tags',
            defaultValue: '@Smoke',
            description: 'Tags which will define which tests will be run.',
            type: 'PT_MULTI_SELECT',
            value: '@Smoke,@Regression'
        )
    }


    post {
        always {
            echo "Inside Always"
            archiveArtifacts artifacts: '*/cucumber-html-reports/*', onlyIfSuccessful: true
            junit allowEmptyResults: true, testResults: '*/surefire-reports/.xml'
            logstashSend failBuild: false, maxLines: 1000

        }
        success {
        echo "Build Successful"
        }
        failure {
            echo "Build Failure"
        }

    }
}