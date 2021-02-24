from boto3.s3.transfer import S3Transfer
import boto3
import settings
import const
#have all the variables populated which are required below
client = boto3.client('s3', aws_access_key_id=settings.access_key,aws_secret_access_key=settings.secret_key)


def upload_aws(filepath, bucket, folder_out, file_name_out):
    transfer = S3Transfer(client)
    transfer.upload_file(filepath, bucket, folder_out + "/" + file_name_out)