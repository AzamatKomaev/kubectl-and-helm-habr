helm install \
	--dry-run -n kubectl-ns \
	--set lockboxSecretStore.externalSecret.secretId=abc \
	--set certificateSecretStore.externalSecret.certificateId=def \
	--set deployment.image=cr.yandex/my_registry_id/app:0.0.1 \
	--set ingress.host=example.ru \
       	test-release ./helm-chart
