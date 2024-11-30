pipeline {
    agent any
    
    environment {
        WEB_SERVER_IP = ''
        DB_SERVER_IP = ''
    }

    stages {
        stage('Security Check Web Server') {
            steps {
                echo 'Running Web Server Validation...'
                script {
                    bat 'cd modules/vm/web && vagrant validate'
                }
            }
        }

        stage('Security Check DB Server') {
            steps {
                echo 'Running DB Server Validation...'
                script {
                    bat 'cd modules/vm/db && vagrant validate'
                }
            }
        }

        // Deployment Stage
        stage('Deploy Web Server') {
            steps {
                echo 'Starting Web Server VMs...'
                script {
                    def result = bat(script: 'cd modules/vm/web && vagrant up', returnStdout: true).trim()
                    echo "Vagrant Up Output: ${result}"
                    
                    // Extract Web Server IP address from vagrant up output
                    def ipAddress = result =~ /inet (\d+\.\d+\.\d+\.\d+)/
                    if (ipAddress) {
                        WEB_SERVER_IP = ipAddress[0][1]
                        echo "Web Server IP Address: ${WEB_SERVER_IP}"
                    }
                }
                echo "Web Server IP Address: ${WEB_SERVER_IP}"
            }
        }

        // stage('Deploy DB Server') {
        //     steps {
        //         echo 'Starting DB Server VMs...'
        //         script {
        //             bat 'cd modules/vm/db && vagrant up' 
        //         }
        //     }
        // }

        // // Testing Web Server
        // stage('Testing Web Server') {
        //     steps {
        //         echo 'Testing Web Server Connectivity and Apache Status...'
        //         script {
        //             bat '''vagrant ssh web_server -c "curl -I http://localhost | grep HTTP/1.1"'''
        //         }
        //     }
        // }

        // Testing Database Server
        // stage('Testing Database Server') {
        //     steps {
        //         withCredentials([[$class: 'VaultUsernamePasswordCredentialBinding', credentialsId: 'vault-jenkins', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME']]) {
        //             // Use the Vault credentials for testing connection
        //             sh """
        //             vagrant ssh web_server -c "mysql -h 192.168.57.81 -u $USERNAME -p$PASSWORD -e 'SHOW DATABASES;'"
        //             """
        //         }
        //     }
        // }
    }

    post {
        always {
            echo 'Pipeline completed.'
        }
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Deployment failed. See logs for details.'
            script {
                bat 'cd modules/vm/web && vagrant destroy -f'
                bat 'cd modules/vm/db && vagrant destroy -f'
            }
        }
    }
}