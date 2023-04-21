<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
        
        <html lang="en">
            
            <head>
                <title>Pokedex</title>
                <!-- Required meta tags -->
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
                
                <!-- Bootstrap CSS v5.2.1 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
                      integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"/>
                <link rel="stylesheet" href="css/style.css"/>
            </head>
            
            <body>
                <div class="container">
                    <header>
                        <div class="caja p-5">
                            <h1 class="opacity-50 text-center text-light bg-dark">POKEDEX</h1>
                            <p class="text-light text-center fs-3">
                                <xsl:value-of select="pokedex/definition"/>
                            </p>
                        </div>
                    </header>
                    <div class="caja1">
                        <h1 class="opacity-50 text-center text-light">TYPES</h1>
                        <div class="row justify-content-between mx-0">
                            <xsl:for-each select="pokedex/types/type">
                                <div class="card col-lg-4 col-md-6 bg-transparent text-center border-0">
                                    <div class="card-body px-0">
                                        <div class=" border border-3 rounded">
                                            <img src="img/{.}_type.png" alt=""/>
                                            <p class="text-light mb-0"><xsl:value-of select="."/></p>
                                        </div>
                                    </div>
                                </div>
                            </xsl:for-each>
                        </div>
                        <h1 class="opacity-50 text-center text-light">POKEMONS</h1>
                        <div class="row justify-content-between mx-0">
                            <xsl:for-each select="pokedex/pokemon">
                                <xsl:sort select="species" order="ascending" data-type="text"/>
                                <div class="card col-lg-6 bg-transparent text-center border-0">
                                    <div class="card-body">
                                        <div class="border border-3 rounded">
                                            <div class="d-flex justify-content-around">
                                                <div class="col-5 my-auto">
                                                    <img src="https://assets.pokemon.com/assets/cms2/img/pokedex/detail/{dex}.png" alt="" class="img-fluid"/>
                                                </div>
                                                <div class="col-7 py-3">
                                                    <h6 class="ps-3 text-light text-start"><xsl:value-of select="species"/></h6>
                                                    <p class="mb-0 ps-3 text-light text-start">HP: <xsl:value-of select="baseStats/HP"/></p>
                                                    <p class="mb-0 ps-3 text-light text-start">ATK: <xsl:value-of select="baseStats/ATK"/></p>
                                                    <p class="mb-0 ps-3 text-light text-start">DEF: <xsl:value-of select="baseStats/DEF"/></p>
                                                    <xsl:choose>
                                                        <xsl:when test="baseStats/SPD &gt; 100">
                                                            <p class="mb-0 ps-3 text-danger text-start">SPD: <xsl:value-of select="baseStats/SPD"/></p>
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <p class="mb-0 ps-3 text-light text-start">SPD: <xsl:value-of select="baseStats/SPD"/></p>
                                                        </xsl:otherwise>
                                                    </xsl:choose>
                                                    <p class="mb-0 ps-3 text-light text-start">SATK: <xsl:value-of select="baseStats/SATK"/></p>
                                                    <p class="mb-0 ps-3 text-light text-start">SDEF: <xsl:value-of select="baseStats/SDEF"/></p>
                                                    <p class="mb-0 ps-3 text-light text-start">
                                                        <xsl:for-each select="types/type">
                                                            <img src="img/{.}_type.png" alt="" class="me-1"/>
                                                        </xsl:for-each>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </xsl:for-each>
                        </div>
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
                        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
                </script>
                
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
                        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
                </script>
            </body>
            
        </html>
        
    </xsl:template>
</xsl:stylesheet>