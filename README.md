# Nexus Web :globe_with_meridians: :muscle:
Repositório que armazena arquivos com dados referentes ao projeto Nexus desenvolvido em linguagem java.

## Versões recomendadas das tecnologias envolvidas
Tecnologia  | Versão
------------ | -------------
Java | 8 (1.8.0)
JDK | 8
Netbeans | 8.0.2
HTML | 5
CSS | 3
Bootstrap | 4 
Tomcat | >= 7
Hibernate | -
NPM | 6.4.1
Javascript | ES6


## Configurações iniciais para utilização

- Atualizar branch de acordo com a branch de origem e sempre realizar o merge com a master a fim de manter o código atualizado e evitar resolução de conflitos durante o merge automático.

- Importar projeto de acordo com instruções na seção **Importar projeto no Netbeans**

- Verificar dependências. Se for o caso, futuramente, da adesão do gerenciador de pacotes e projetos **Maven**, recomenda-se realizar a instalação/atualização da dependências, contidas no arquivo **pom.xml**

## Importar projeto no Netbeans

Dispões dos passos necessários para utilização do projeto dentro do Ambiente de Desenvolvimento Integrado (IDE) Netbeans.

:warning: Utilize outras IDEs como **Eclipse, Intellij Idea** por sua conta e risco, visto que a utilização de um ambiente comum entre a equipe mitiga problemas com configurações específicas dos integrantes que optem por um caminho não padrão.

- Abrindo projeto caso ainda não esteja dentro do ambiente:
> Clique em "Abrir projeto...", em seguida, no diálogo que se abre, selecione o caminho do projeto em seu ambiente local e clique no botão "Abrir projeto".

![Tela inicial do netbeans com menu "Arquivo" aberto](https://user-images.githubusercontent.com/22922799/57184356-d3d7ec00-6e90-11e9-9192-c48125c9c92c.png)      
            
## :information_source: Importando projeto que tenha sido utilizado no eclipse

Há a possibilidade de o projeto ser recriado ou importado no eclipse pelo time de desenvolvimento, portanto, neste caso em específico, o eclipse pode causar algumas modificações no projeto que dificulta sua reutiização ao importar em outra IDE como o Netbeans. Portanto, siga os passos abaixo para que um projeto previamente modificado no eclipse seja importado corretamente dentro do Netbeans.

> Vá em "Arquivo" -> "Importar Projeto" -> "Projeto Eclipse"

![image](https://user-images.githubusercontent.com/22922799/57184514-dd625380-6e92-11e9-8108-53da38aeea0f.png)

> No diálogo que se inicia, opte pela primeira opção, marcando "Importar projetos do Espaço de Trabalho"
> Em seguida, procure pelo espaço de trabalho (workspace) eclipse que o projeto se encontra e clique em "Próximo".

![image](https://user-images.githubusercontent.com/22922799/57184547-4ea20680-6e93-11e9-8df2-5a86fa0428ee.png)

> Na próxima tela, seleciona o projeto nexus e mantenha a opção "Armazene os dados do projeto Netbeans nas pastas do projeto Eclipse". Feito isso, clique em próximo, selecione o servidor (recomenda-se Tomcat) configurado na sua IDE Netbeans e clique em "Adicionar", logo em seguida, clique em finalizar. 

O projeto deve ser incluído na perspectiva/painel "Projeto" após carregado, e estará apto para uso.

### :triangular_flag_on_post: :warning: Avisos importantes

- Não excluir arquivos importantes como .gitignore
- Sempre executar build (Limpar e Construir no NetBeans) no projeto antes de usá-lo

