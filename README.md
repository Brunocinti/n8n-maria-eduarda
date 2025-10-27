# N8N para Maria Eduarda - Instalação Corrigida

## 🚀 Instalação Simplificada (15 minutos)

### PASSO 1: Upload no GitHub

1. Acesse: https://github.com
2. Crie novo repositório: **n8n-maria-eduarda**
3. Marque: Public + Add README
4. Faça upload dos arquivos:
   - `package.json`
   - `.env.example`
   - `README.md`
   - `workflow-consulta-api-facta.json`

### PASSO 2: Deploy no Render

1. Acesse: https://dashboard.render.com
2. New + → Web Service
3. Conecte: **n8n-maria-eduarda**

**Configurações:**
- Name: `n8n-maria-eduarda`
- Region: Oregon (US West)
- Branch: `main`
- Root Directory: (vazio)
- Runtime: **Node**
- Build Command: `npm install`
- Start Command: `npm start`
- Instance Type: **Free**

### PASSO 3: Variáveis de Ambiente

Adicione estas variáveis:

| Key | Value |
|-----|-------|
| N8N_HOST | 0.0.0.0 |
| N8N_PORT | 5678 |
| N8N_PROTOCOL | https |
| NODE_ENV | production |
| N8N_BASIC_AUTH_ACTIVE | true |
| N8N_BASIC_AUTH_USER | admin |
| N8N_BASIC_AUTH_PASSWORD | SuaSenhaForte123! |
| WEBHOOK_URL | https://n8n-maria-eduarda.onrender.com/ |
| GENERIC_TIMEZONE | America/Sao_Paulo |
| N8N_ENCRYPTION_KEY | maria-eduarda-2025 |

### PASSO 4: Criar e Aguardar

- Clique em **"Create Web Service"**
- Aguarde 5-7 minutos (instalação do N8N demora um pouco)
- Quando aparecer "Live", está pronto!

### PASSO 5: Acessar N8N

1. Abra: `https://n8n-maria-eduarda.onrender.com`
2. Login:
   - User: `admin`
   - Password: a senha que você configurou

### PASSO 6: Importar Workflow

1. No N8N: + → Import from File
2. Selecione: `workflow-consulta-api-facta.json`
3. Clique em "Active" para ativar
4. Copie a URL do webhook

### PASSO 7: Conectar ao GPT Maker

Use a URL do webhook na intenção do GPT Maker!

---

✅ **PRONTO! N8N FUNCIONANDO!**

