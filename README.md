# N8N para Maria Eduarda - Instalação no Render

## 🎯 O que é o N8N?

N8N é uma ferramenta de automação de workflows (fluxos de trabalho) que permite:
- Conectar diferentes serviços e APIs
- Criar automações complexas
- Fazer disparos programados no WhatsApp
- Integrar com GPT Maker e API Facta

## 📋 Pré-requisitos

- Conta no GitHub (você já tem)
- Conta no Render.com (você já tem)

## 🚀 Instalação Passo a Passo

### PASSO 1: Fazer Upload no GitHub

1. Acesse seu GitHub: https://github.com
2. Clique em **"+"** → **"New repository"**
3. Nome do repositório: `n8n-maria-eduarda`
4. Marque: **Public**
5. Marque: **Add a README file**
6. Clique em **"Create repository"**

7. Clique em **"Add file"** → **"Upload files"**
8. Arraste os arquivos:
   - `Dockerfile`
   - `render.yaml`
   - `README.md`
9. Commit: `Configuração inicial do N8N`
10. Clique em **"Commit changes"**

### PASSO 2: Deploy no Render

1. Acesse: https://dashboard.render.com
2. Clique em **"New +"** → **"Web Service"**
3. Clique em **"Connect a repository"**
4. Selecione: **n8n-maria-eduarda**
5. Clique em **"Connect"**

### PASSO 3: Configurar o Web Service

Preencha os campos:

**Name:**
```
n8n-maria-eduarda
```

**Region:**
```
Oregon (US West) - ou qualquer outra
```

**Branch:**
```
main
```

**Root Directory:**
```
(deixe em branco)
```

**Environment:**
```
Docker
```

**Instance Type:**
```
Free
```

### PASSO 4: Variáveis de Ambiente (Importantes!)

Role até **"Environment Variables"** e adicione:

**Variável 1:**
- Key: `N8N_BASIC_AUTH_ACTIVE`
- Value: `true`

**Variável 2:**
- Key: `N8N_BASIC_AUTH_USER`
- Value: `admin` (ou escolha outro usuário)

**Variável 3:**
- Key: `N8N_BASIC_AUTH_PASSWORD`
- Value: `SuaSenhaForte123!` (escolha uma senha forte)

**Variável 4:**
- Key: `WEBHOOK_URL`
- Value: `https://n8n-maria-eduarda.onrender.com/`

**Variável 5:**
- Key: `GENERIC_TIMEZONE`
- Value: `America/Sao_Paulo`

**Variável 6:**
- Key: `N8N_ENCRYPTION_KEY`
- Value: `maria-eduarda-2025-facta-api` (qualquer string única)

### PASSO 5: Criar o Web Service

1. Clique em **"Create Web Service"**
2. Aguarde 3-5 minutos (deploy do Docker demora mais)
3. Quando aparecer **"Live"** em verde, está pronto!

### PASSO 6: Acessar o N8N

1. Copie a URL que aparece no topo (tipo: `https://n8n-maria-eduarda.onrender.com`)
2. Abra essa URL no navegador
3. Faça login com:
   - **Usuário**: `admin` (ou o que você configurou)
   - **Senha**: a senha que você configurou

✅ **N8N INSTALADO E FUNCIONANDO!**

---

## 📚 Próximos Passos

Depois de instalar, vou te enviar:
1. **Workflow pronto** para consultar a API Facta
2. **Workflow pronto** para disparos no WhatsApp
3. **Instruções** de como conectar com o GPT Maker

---

## ⚠️ Observações Importantes

### Plano Gratuito do Render:
- ✅ Totalmente gratuito
- ⚠️ O servidor "dorme" após 15 minutos sem uso
- ⚠️ A primeira requisição pode demorar 30-60 segundos

### Para Produção:
Considere upgrade para plano pago (US$ 7/mês) para:
- Servidor sempre ativo
- Resposta instantânea
- Mais recursos

---

## 🆘 Problemas Comuns

### N8N não abre:
- Aguarde 5 minutos após o deploy
- Verifique se o status está "Live" no Render
- Tente acessar `/healthz` para verificar se está respondendo

### Erro de autenticação:
- Verifique se as variáveis `N8N_BASIC_AUTH_USER` e `N8N_BASIC_AUTH_PASSWORD` estão corretas

### Workflows não salvam:
- Verifique se a variável `N8N_ENCRYPTION_KEY` está configurada

---

**Criado por**: Manus AI  
**Para**: Bruno - Agente Maria Eduarda  
**Data**: 27 de outubro de 2025

