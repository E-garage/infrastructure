add-secret-docker-registry:
	kubectl create secret docker-registry regcred --docker-username=$USERNAME --docker-password=$PASS
install-cert-menager:
	kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.6.1/cert-manager.yaml
create-account-gcp-dns:
	gcloud iam service-accounts add-iam-policy-binding \
        --role roles/iam.workloadIdentityUser \
        --member "serviceAccount:$PROJECT_ID.svc.id.goog[cert-manager/cert-manager]" \
        dns01-solver@$PROJECT_ID.iam.gserviceaccount.com
link-account-cert-menager:
	kubectl annotate serviceaccount --namespace=cert-manager cert-manager "iam.gke.io/gcp-service-account=dns01-solver@$PROJECT_ID.iam.gserviceaccount.com"