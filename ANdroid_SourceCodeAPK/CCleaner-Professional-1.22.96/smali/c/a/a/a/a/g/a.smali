.class abstract Lc/a/a/a/a/g/a;
.super Lc/a/a/a/a/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lc/a/a/a/i;Ljava/lang/String;Ljava/lang/String;Lc/a/a/a/a/e/e;I)V
    .locals 0

    .prologue
    .line 69
    invoke-direct/range {p0 .. p5}, Lc/a/a/a/a/b/a;-><init>(Lc/a/a/a/i;Ljava/lang/String;Ljava/lang/String;Lc/a/a/a/a/e/e;I)V

    .line 70
    return-void
.end method

.method private a(Lc/a/a/a/a/e/d;Lc/a/a/a/a/g/d;)Lc/a/a/a/a/e/d;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 108
    const-string/jumbo v0, "app[identifier]"

    iget-object v1, p2, Lc/a/a/a/a/g/d;->b:Ljava/lang/String;

    .line 4526
    invoke-virtual {p1, v0, v1}, Lc/a/a/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    move-result-object v0

    .line 108
    const-string/jumbo v1, "app[name]"

    iget-object v2, p2, Lc/a/a/a/a/g/d;->f:Ljava/lang/String;

    .line 5526
    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    move-result-object v0

    .line 108
    const-string/jumbo v1, "app[display_version]"

    iget-object v2, p2, Lc/a/a/a/a/g/d;->c:Ljava/lang/String;

    .line 6526
    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    move-result-object v0

    .line 108
    const-string/jumbo v1, "app[build_version]"

    iget-object v2, p2, Lc/a/a/a/a/g/d;->d:Ljava/lang/String;

    .line 7526
    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    move-result-object v0

    .line 108
    const-string/jumbo v1, "app[source]"

    iget v2, p2, Lc/a/a/a/a/g/d;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/Number;)Lc/a/a/a/a/e/d;

    move-result-object v0

    const-string/jumbo v1, "app[minimum_sdk_version]"

    iget-object v2, p2, Lc/a/a/a/a/g/d;->h:Ljava/lang/String;

    .line 8526
    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    move-result-object v0

    .line 108
    const-string/jumbo v1, "app[built_sdk_version]"

    iget-object v2, p2, Lc/a/a/a/a/g/d;->i:Ljava/lang/String;

    .line 9526
    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    move-result-object v2

    .line 116
    iget-object v0, p2, Lc/a/a/a/a/g/d;->e:Ljava/lang/String;

    invoke-static {v0}, Lc/a/a/a/a/b/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-string/jumbo v0, "app[instance_identifier]"

    iget-object v1, p2, Lc/a/a/a/a/g/d;->e:Ljava/lang/String;

    .line 10526
    invoke-virtual {v2, v0, v1}, Lc/a/a/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    .line 120
    :cond_0
    iget-object v0, p2, Lc/a/a/a/a/g/d;->j:Lc/a/a/a/a/g/n;

    if-eqz v0, :cond_1

    .line 121
    const/4 v1, 0x0

    .line 124
    :try_start_0
    iget-object v0, p0, Lc/a/a/a/a/g/a;->b:Lc/a/a/a/i;

    .line 11116
    iget-object v0, v0, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 124
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p2, Lc/a/a/a/a/g/d;->j:Lc/a/a/a/a/g/n;

    iget v3, v3, Lc/a/a/a/a/g/n;->b:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 127
    const-string/jumbo v0, "app[icon][hash]"

    iget-object v3, p2, Lc/a/a/a/a/g/d;->j:Lc/a/a/a/a/g/n;

    iget-object v3, v3, Lc/a/a/a/a/g/n;->a:Ljava/lang/String;

    .line 11526
    invoke-virtual {v2, v0, v3}, Lc/a/a/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    move-result-object v0

    .line 127
    const-string/jumbo v3, "app[icon][data]"

    const-string/jumbo v4, "icon.png"

    const-string/jumbo v5, "application/octet-stream"

    invoke-virtual {v0, v3, v4, v5, v1}, Lc/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lc/a/a/a/a/e/d;

    move-result-object v0

    const-string/jumbo v3, "app[icon][width]"

    iget-object v4, p2, Lc/a/a/a/a/g/d;->j:Lc/a/a/a/a/g/n;

    iget v4, v4, Lc/a/a/a/a/g/n;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lc/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/Number;)Lc/a/a/a/a/e/d;

    move-result-object v0

    const-string/jumbo v3, "app[icon][height]"

    iget-object v4, p2, Lc/a/a/a/a/g/d;->j:Lc/a/a/a/a/g/n;

    iget v4, v4, Lc/a/a/a/a/g/n;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lc/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/Number;)Lc/a/a/a/a/e/d;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    const-string/jumbo v0, "Failed to close app icon InputStream."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 140
    :cond_1
    :goto_0
    iget-object v0, p2, Lc/a/a/a/a/g/d;->k:Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p2, Lc/a/a/a/a/g/d;->k:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a/k;

    .line 12151
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "app[build][libraries][%s][version]"

    new-array v5, v8, [Ljava/lang/Object;

    .line 13032
    iget-object v6, v0, Lc/a/a/a/k;->a:Ljava/lang/String;

    .line 12151
    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 13036
    iget-object v4, v0, Lc/a/a/a/k;->b:Ljava/lang/String;

    .line 13526
    invoke-virtual {v2, v3, v4}, Lc/a/a/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    .line 14155
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "app[build][libraries][%s][type]"

    new-array v5, v8, [Ljava/lang/Object;

    .line 15032
    iget-object v6, v0, Lc/a/a/a/k;->a:Ljava/lang/String;

    .line 14155
    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 15040
    iget-object v0, v0, Lc/a/a/a/k;->c:Ljava/lang/String;

    .line 15526
    invoke-virtual {v2, v3, v0}, Lc/a/a/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    goto :goto_1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    :try_start_1
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v3

    const-string/jumbo v4, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Failed to find app icon with resource ID: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p2, Lc/a/a/a/a/g/d;->j:Lc/a/a/a/a/g/n;

    iget v6, v6, Lc/a/a/a/a/g/n;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    const-string/jumbo v0, "Failed to close app icon InputStream."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string/jumbo v2, "Failed to close app icon InputStream."

    invoke-static {v1, v2}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2
    return-object v2
.end method


# virtual methods
.method public a(Lc/a/a/a/a/g/d;)Z
    .locals 6

    .prologue
    .line 74
    invoke-virtual {p0}, Lc/a/a/a/a/g/a;->a()Lc/a/a/a/a/e/d;

    move-result-object v0

    .line 3098
    const-string/jumbo v1, "X-CRASHLYTICS-API-KEY"

    iget-object v2, p1, Lc/a/a/a/a/g/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    move-result-object v0

    const-string/jumbo v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    move-result-object v0

    const-string/jumbo v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v2, p0, Lc/a/a/a/a/g/a;->b:Lc/a/a/a/i;

    invoke-virtual {v2}, Lc/a/a/a/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    move-result-object v0

    .line 76
    invoke-direct {p0, v0, p1}, Lc/a/a/a/a/g/a;->a(Lc/a/a/a/a/e/d;Lc/a/a/a/a/g/d;)Lc/a/a/a/a/e/d;

    move-result-object v1

    .line 78
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Sending app info to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3100
    iget-object v4, p0, Lc/a/a/a/a/b/a;->a:Ljava/lang/String;

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p1, Lc/a/a/a/a/g/d;->j:Lc/a/a/a/a/g/n;

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "App icon hash is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lc/a/a/a/a/g/d;->j:Lc/a/a/a/a/g/n;

    iget-object v4, v4, Lc/a/a/a/a/g/n;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "App icon size is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lc/a/a/a/a/g/d;->j:Lc/a/a/a/a/g/n;

    iget v4, v4, Lc/a/a/a/a/g/n;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lc/a/a/a/a/g/d;->j:Lc/a/a/a/a/g/n;

    iget v4, v4, Lc/a/a/a/a/g/n;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-virtual {v1}, Lc/a/a/a/a/e/d;->b()I

    move-result v2

    .line 87
    const-string/jumbo v0, "POST"

    .line 3925
    invoke-virtual {v1}, Lc/a/a/a/a/e/d;->a()Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Create"

    .line 90
    :goto_0
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v3

    const-string/jumbo v4, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " app request ID: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "X-REQUEST-ID"

    invoke-virtual {v1, v5}, Lc/a/a/a/a/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Result was "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {v2}, Lc/a/a/a/a/b/r;->a(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 87
    :cond_1
    const-string/jumbo v0, "Update"

    goto :goto_0

    .line 94
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
