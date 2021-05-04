node ('master')
{
    properties([buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '5', daysToKeepStr: '', numToKeepStr: '5')), pipelineTriggers([pollSCM('* * * * *')])])
    def Maven_Home=tool name:"maven3.6.3"
      echo "GitHub BranhName ${env.BRANCH_NAME}"
      echo "Jenkins Job Number ${env.BUILD_NUMBER}"
      echo "Jenkins Node Name ${env.NODE_NAME}"
      echo "Jenkins Home ${env.JENKINS_HOME}"
      echo "Jenkins URL ${env.JENKINS_URL}"
      echo "JOB Name ${env.JOB_NAME}"
    stage ('checkout source code')
    {
        git branch: 'dev', credentialsId: 'githubcred', url: 'https://github.com/Kammula280/ecommercemavenwebapppipeline.git'
    }
    stage ('Build Artifact')
    {
        sh "${Maven_Home}/bin/mvn clean package"
    }
    stage ('Excecute sonar qube report')
    {
        sh "${Maven_Home}/bin/mvn sonar:sonar"
    }
    stage ('upload artifact')
    {
        sh "${Maven_Home}/bin/mvn deploy"
    }
    stage ('Deploy to tomcat')
    {
        sshagent(['d20ea64a-8685-4263-a0ac-28c646ec6f51']) 
        {
         sh "scp -o StrictHostKeyChecking=no target/maven-web-application.war ec2-user@3.14.27.175:/opt/apache-tomcat-9.0.45/webapps"
        }
    stage ('send email')
    {
        mail bcc: '', body: 'Please check Jenkins GUI to view the status', cc: '', from: '', replyTo: '', subject: 'Build is Finished', to: 'kammularamgopal@gmail.com'
    }
    }
}
