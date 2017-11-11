.class final Lcom/b/a/c/p;
.super Lc/a/a/a/a/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/c/o;


# direct methods
.method public constructor <init>(Lc/a/a/a/i;Ljava/lang/String;Ljava/lang/String;Lc/a/a/a/a/e/e;)V
    .locals 6

    .prologue
    .line 39
    sget v5, Lc/a/a/a/a/e/c;->b:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lc/a/a/a/a/b/a;-><init>(Lc/a/a/a/i;Ljava/lang/String;Ljava/lang/String;Lc/a/a/a/a/e/e;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/c/n;)Z
    .locals 13

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/b/a/c/p;->a()Lc/a/a/a/a/e/d;

    move-result-object v0

    .line 3075
    const-string/jumbo v1, "X-CRASHLYTICS-API-KEY"

    iget-object v2, p1, Lcom/b/a/c/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    move-result-object v0

    const-string/jumbo v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    move-result-object v0

    const-string/jumbo v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v2, p0, Lcom/b/a/c/p;->b:Lc/a/a/a/i;

    invoke-virtual {v2}, Lc/a/a/a/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    move-result-object v0

    .line 3080
    iget-object v1, p1, Lcom/b/a/c/n;->b:Lcom/b/a/c/ae;

    invoke-interface {v1}, Lcom/b/a/c/ae;->e()Ljava/util/Map;

    move-result-object v1

    .line 3082
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3864
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lc/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    move-result-object v0

    move-object v2, v0

    .line 3084
    goto :goto_0

    .line 61
    :cond_0
    iget-object v5, p1, Lcom/b/a/c/n;->b:Lcom/b/a/c/ae;

    .line 4089
    const-string/jumbo v0, "report[identifier]"

    invoke-interface {v5}, Lcom/b/a/c/ae;->b()Ljava/lang/String;

    move-result-object v1

    .line 4526
    invoke-virtual {v2, v0, v1}, Lc/a/a/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    .line 4091
    invoke-interface {v5}, Lcom/b/a/c/ae;->d()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_2

    .line 4092
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Adding single file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/b/a/c/ae;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to report "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Lcom/b/a/c/ae;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4094
    const-string/jumbo v0, "report[file]"

    invoke-interface {v5}, Lcom/b/a/c/ae;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "application/octet-stream"

    invoke-interface {v5}, Lcom/b/a/c/ae;->c()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v2, v0, v1, v6, v5}, Lc/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lc/a/a/a/a/e/d;

    move-result-object v2

    .line 63
    :cond_1
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Sending report to: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5100
    iget-object v6, p0, Lc/a/a/a/a/b/a;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2}, Lc/a/a/a/a/e/d;->b()I

    move-result v0

    .line 67
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v5, "CrashlyticsCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Create report request ID: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "X-REQUEST-ID"

    invoke-virtual {v2, v7}, Lc/a/a/a/a/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Result was: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {v0}, Lc/a/a/a/a/b/r;->a(I)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    :goto_1
    return v0

    .line 4099
    :cond_2
    invoke-interface {v5}, Lcom/b/a/c/ae;->d()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    move v0, v4

    move v1, v4

    :goto_2
    if-ge v1, v7, :cond_1

    aget-object v8, v6, v1

    .line 4100
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v9

    const-string/jumbo v10, "CrashlyticsCore"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Adding file "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " to report "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v5}, Lcom/b/a/c/ae;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4102
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "report[file"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "application/octet-stream"

    invoke-virtual {v2, v9, v10, v11, v8}, Lc/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lc/a/a/a/a/e/d;

    .line 4104
    add-int/lit8 v0, v0, 0x1

    .line 4099
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v0, v4

    .line 71
    goto :goto_1
.end method
