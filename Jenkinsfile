pipeline {
  agent any                                   // [필수] 실행 위치

  environment {                               // [Harbor push용] 필수 섹션은 아님
    HARBOR = credentials('harbor-cred')
    IMAGE  = "harbor.lab.local/demo/app:${BUILD_NUMBER}"
  }

  stages {                                    // [필수]
    stage('Build') {
      steps {                                 // [필수]
        sh 'docker build -f Dockerfile -t $IMAGE .'
      }
    }
    stage('Push') {
      steps {
        sh 'echo $HARBOR_PSW | docker login harbor.lab.local -u $HARBOR_USR --password-stdin'
        sh 'docker push $IMAGE'
      }
    }
  }
} 