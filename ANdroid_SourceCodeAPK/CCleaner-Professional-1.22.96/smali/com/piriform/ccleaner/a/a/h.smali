.class public final Lcom/piriform/ccleaner/a/a/h;
.super Lcom/piriform/ccleaner/a/a/a;
.source "SourceFile"


# instance fields
.field private final i:Landroid/content/ContentResolver;

.field private j:I


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/a/q;Landroid/content/ContentResolver;Lcom/piriform/ccleaner/b/e;)V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/piriform/ccleaner/a/h;->g:Lcom/piriform/ccleaner/a/h;

    sget-object v1, Lcom/piriform/ccleaner/a/c;->c:Lcom/piriform/ccleaner/a/c;

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/piriform/ccleaner/a/a/a;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/h;Lcom/piriform/ccleaner/a/c;Lcom/piriform/ccleaner/b/e;)V

    .line 35
    iput-object p2, p0, Lcom/piriform/ccleaner/a/a/h;->i:Landroid/content/ContentResolver;

    .line 36
    return-void
.end method


# virtual methods
.method protected final c()I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 40
    .line 1053
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 41
    const v1, 0x7f08003c

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/a/a/h;->a(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/h;->i:Landroid/content/ContentResolver;

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/h;->i:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/piriform/ccleaner/s/g;->a(Landroid/content/ContentResolver;)I

    move-result v1

    iput v1, p0, Lcom/piriform/ccleaner/a/a/h;->j:I

    .line 44
    const v1, 0x7f08003d

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lcom/piriform/ccleaner/a/a/h;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/a/a/h;->a(Ljava/lang/String;)V

    .line 45
    iget v1, p0, Lcom/piriform/ccleaner/a/a/h;->j:I

    if-lez v1, :cond_0

    .line 46
    const v1, 0x7f09001b

    iget v2, p0, Lcom/piriform/ccleaner/a/a/h;->j:I

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/piriform/ccleaner/a/a/h;->j:I

    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 46
    invoke-interface {v0, v1, v2, v3}, Lcom/piriform/ccleaner/a/q;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    const-wide/16 v2, 0x0

    iget v1, p0, Lcom/piriform/ccleaner/a/a/h;->j:I

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/piriform/ccleaner/a/a/h;->a(Ljava/lang/String;JI)V

    .line 50
    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->a:I

    .line 55
    :goto_0
    return v0

    .line 52
    :cond_0
    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->e:I

    goto :goto_0

    .line 55
    :cond_1
    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->b:I

    goto :goto_0
.end method

.method protected final f()Lcom/piriform/ccleaner/a/a/d$b;
    .locals 6

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/h;->i:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/piriform/ccleaner/s/g;->b(Landroid/content/ContentResolver;)V

    .line 63
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/h;->i:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/piriform/ccleaner/s/g;->c(Landroid/content/ContentResolver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2053
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 70
    const v1, 0x7f09001b

    iget v2, p0, Lcom/piriform/ccleaner/a/a/h;->j:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/piriform/ccleaner/a/a/h;->j:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/piriform/ccleaner/a/q;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    const-wide/16 v2, 0x0

    iget v1, p0, Lcom/piriform/ccleaner/a/a/h;->j:I

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/piriform/ccleaner/a/a/h;->a(Ljava/lang/String;JI)V

    .line 72
    sget-object v0, Lcom/piriform/ccleaner/a/a/d$b;->a:Lcom/piriform/ccleaner/a/a/d$b;

    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    sget-object v0, Lcom/piriform/ccleaner/a/a/d$b;->b:Lcom/piriform/ccleaner/a/a/d$b;

    goto :goto_0
.end method
