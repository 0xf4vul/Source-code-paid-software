.class final Lcom/b/a/a/p;
.super Lc/a/a/a/a/b/a;
.source "SourceFile"

# interfaces
.implements Lc/a/a/a/a/d/f;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc/a/a/a/i;Ljava/lang/String;Ljava/lang/String;Lc/a/a/a/a/e/e;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 28
    sget v5, Lc/a/a/a/a/e/c;->b:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lc/a/a/a/a/b/a;-><init>(Lc/a/a/a/i;Ljava/lang/String;Ljava/lang/String;Lc/a/a/a/a/e/e;I)V

    .line 29
    iput-object p5, p0, Lcom/b/a/a/p;->c:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/b/a/a/p;->a()Lc/a/a/a/a/e/d;

    move-result-object v0

    .line 37
    const-string/jumbo v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v1, v3}, Lc/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    move-result-object v0

    const-string/jumbo v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v3, p0, Lcom/b/a/a/p;->b:Lc/a/a/a/i;

    invoke-virtual {v3}, Lc/a/a/a/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lc/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    move-result-object v0

    const-string/jumbo v1, "X-CRASHLYTICS-API-KEY"

    iget-object v3, p0, Lcom/b/a/a/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lc/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/d;

    move-result-object v3

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "session_analytics_file_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "application/vnd.crashlytics.android.events"

    invoke-virtual {v3, v5, v6, v7, v0}, Lc/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lc/a/a/a/a/e/d;

    .line 46
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 47
    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "Answers"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Sending "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " analytics files to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1100
    iget-object v5, p0, Lc/a/a/a/a/b/a;->a:Ljava/lang/String;

    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v3}, Lc/a/a/a/a/e/d;->b()I

    move-result v0

    .line 52
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v3, "Answers"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Response code for analytics file send is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {v0}, Lc/a/a/a/a/b/r;->a(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
