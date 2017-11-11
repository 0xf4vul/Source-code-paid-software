.class public final Lcom/piriform/ccleaner/a/a/k;
.super Lcom/piriform/ccleaner/a/a/a;
.source "SourceFile"


# instance fields
.field private final i:Landroid/content/ClipboardManager;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/a/q;Landroid/content/ClipboardManager;Lcom/piriform/ccleaner/b/e;)V
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/piriform/ccleaner/a/h;->c:Lcom/piriform/ccleaner/a/h;

    sget-object v1, Lcom/piriform/ccleaner/a/c;->c:Lcom/piriform/ccleaner/a/c;

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/piriform/ccleaner/a/a/a;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/h;Lcom/piriform/ccleaner/a/c;Lcom/piriform/ccleaner/b/e;)V

    .line 21
    iput-object p2, p0, Lcom/piriform/ccleaner/a/a/k;->i:Landroid/content/ClipboardManager;

    .line 22
    return-void
.end method


# virtual methods
.method protected final c()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    .line 1053
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 26
    const v3, 0x7f080041

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/k;->a(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/k;->i:Landroid/content/ClipboardManager;

    .line 2009
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 27
    :goto_0
    if-eqz v0, :cond_2

    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->a:I

    .line 28
    :goto_1
    sget v3, Lcom/piriform/ccleaner/a/a/d$a;->a:I

    if-ne v0, v3, :cond_0

    .line 2053
    iget-object v3, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 29
    const v4, 0x7f08008b

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 30
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5, v1}, Lcom/piriform/ccleaner/a/a/k;->a(Ljava/lang/String;JI)V

    .line 32
    :cond_0
    return v0

    :cond_1
    move v0, v2

    .line 2009
    goto :goto_0

    .line 27
    :cond_2
    sget v0, Lcom/piriform/ccleaner/a/a/d$a;->b:I

    goto :goto_1
.end method

.method protected final f()Lcom/piriform/ccleaner/a/a/d$b;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/k;->i:Landroid/content/ClipboardManager;

    .line 3013
    if-eqz v0, :cond_0

    .line 3014
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    .line 3015
    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    move v0, v1

    .line 3053
    :goto_0
    iget-object v3, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 38
    const v4, 0x7f0800ed

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 39
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5, v1}, Lcom/piriform/ccleaner/a/a/k;->a(Ljava/lang/String;JI)V

    .line 40
    if-eqz v0, :cond_1

    sget-object v0, Lcom/piriform/ccleaner/a/a/d$b;->a:Lcom/piriform/ccleaner/a/a/d$b;

    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 3018
    goto :goto_0

    .line 40
    :cond_1
    sget-object v0, Lcom/piriform/ccleaner/a/a/d$b;->b:Lcom/piriform/ccleaner/a/a/d$b;

    goto :goto_1
.end method
