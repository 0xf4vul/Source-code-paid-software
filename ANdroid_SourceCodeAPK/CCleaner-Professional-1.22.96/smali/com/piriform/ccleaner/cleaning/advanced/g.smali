.class final Lcom/piriform/ccleaner/cleaning/advanced/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method private static nodeDesc(Lcom/piriform/ccleaner/cleaning/advanced/y;I)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 36
    new-instance v0, Ljava/lang/String;

    new-array v1, p1, [C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    const-string/jumbo v1, "\u0000"

    const-string/jumbo v2, "\t\t"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/y;->id:Ljava/lang/String;

    .line 38
    iget-object v2, p0, Lcom/piriform/ccleaner/cleaning/advanced/y;->text:Ljava/lang/String;

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "[%s]"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/piriform/ccleaner/cleaning/advanced/g;->safeClassName(Lcom/piriform/ccleaner/cleaning/advanced/y;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    if-eqz v1, :cond_0

    .line 42
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, " %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_0
    if-eqz v2, :cond_1

    .line 45
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v1, " \'%s\'"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_1
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static printViewTree(Lcom/piriform/ccleaner/cleaning/advanced/y;)V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method private static safeClassName(Lcom/piriform/ccleaner/cleaning/advanced/y;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2e

    .line 52
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/y;->className:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static traverseTree(Lcom/piriform/ccleaner/cleaning/advanced/y;Ljava/lang/StringBuilder;I)V
    .locals 4

    .prologue
    .line 24
    invoke-static {p0, p2}, Lcom/piriform/ccleaner/cleaning/advanced/g;->nodeDesc(Lcom/piriform/ccleaner/cleaning/advanced/y;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/y;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 27
    if-lez v2, :cond_0

    .line 28
    add-int/lit8 v3, p2, 0x1

    .line 29
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 30
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/y;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/y;

    invoke-static {v0, p1, v3}, Lcom/piriform/ccleaner/cleaning/advanced/g;->traverseTree(Lcom/piriform/ccleaner/cleaning/advanced/y;Ljava/lang/StringBuilder;I)V

    .line 29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method
