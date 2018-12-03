    node{
        stage('Prepare Project'){
        downloadProject()
        }
        stage('Test Branch'){
            echo "branch: ${env.BRANCH_NAME}"
            if (env.BRANCH_NAME == 'master'){
                echo "Hello from master branch"
            }else if (env.BRANCH_NAME == 'develop'){
                echo "Hello from develop branch"
            }else if (env.BRANCH_NAME == 'testing'){
                echo "Hello from testing branch"
            }else{
                echo "Something wrong"
            }
        }
    }
    def downloadProject(){
        git branch: env.BRANCH_NAME,
        credentialsId: 'chibombo',
        url: 'https://github.com/chibombo/Unit_Test_Swift.git'
    }

