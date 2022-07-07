pipeline {
	agent any

	stages {
		stage('Build'){
			steps{
                           sh '''
				#!bin/bash
				echo 'Building...'                         
                                pip3 install -r requirements.txt
				
			      '''
                        }
		}
		stage('Test'){
			steps{
                           sh '''
                                #!bin/bash
				echo 'Testing..'
                                jupyter-nbconvert --to=html notebook1.ipynb
                              '''

			}
		}
        }
        post {
                always {
              
                        archiveArtifacts artifacts: 'notebook1.html', followSymlinks: false
     
                }
        }
}
