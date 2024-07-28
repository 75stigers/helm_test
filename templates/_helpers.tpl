{{- define "helm-test.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "helm-test.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}-{{ .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "helm-test.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}
