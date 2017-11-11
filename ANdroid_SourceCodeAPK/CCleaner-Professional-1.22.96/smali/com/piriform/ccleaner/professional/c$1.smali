.class final Lcom/piriform/ccleaner/professional/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/i/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/professional/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/professional/c;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/professional/c;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/c$1;->a:Lcom/piriform/ccleaner/professional/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/i/c;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 49
    .line 1041
    iget v2, p1, Lcom/piriform/ccleaner/i/c;->a:I

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/piriform/ccleaner/i/l;->a(Ljava/lang/Integer;)Lcom/piriform/ccleaner/i/l;

    move-result-object v3

    .line 52
    iget-object v4, p0, Lcom/piriform/ccleaner/professional/c$1;->a:Lcom/piriform/ccleaner/professional/c;

    .line 1049
    iget-object v5, v3, Lcom/piriform/ccleaner/i/l;->e:Lcom/piriform/ccleaner/b/b;

    .line 52
    invoke-static {v4, v5, v2}, Lcom/piriform/ccleaner/professional/c;->a(Lcom/piriform/ccleaner/professional/c;Lcom/piriform/ccleaner/b/b;I)V

    .line 53
    iget-object v2, p0, Lcom/piriform/ccleaner/professional/c$1;->a:Lcom/piriform/ccleaner/professional/c;

    .line 1053
    iget-object v3, v3, Lcom/piriform/ccleaner/i/l;->f:Lcom/piriform/ccleaner/professional/m;

    .line 53
    invoke-static {v2, v3}, Lcom/piriform/ccleaner/professional/c;->a(Lcom/piriform/ccleaner/professional/c;Lcom/piriform/ccleaner/professional/m;)V

    .line 55
    invoke-virtual {p1}, Lcom/piriform/ccleaner/i/c;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2053
    iget v2, p1, Lcom/piriform/ccleaner/i/c;->a:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    move v2, v1

    .line 55
    :goto_0
    if-eqz v2, :cond_2

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/c$1;->a:Lcom/piriform/ccleaner/professional/c;

    invoke-static {v0}, Lcom/piriform/ccleaner/professional/c;->a(Lcom/piriform/ccleaner/professional/c;)Lcom/piriform/ccleaner/b/a;

    move-result-object v0

    sget-object v1, Lcom/piriform/ccleaner/b/b;->az:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 57
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/c$1;->a:Lcom/piriform/ccleaner/professional/c;

    invoke-static {v0}, Lcom/piriform/ccleaner/professional/c;->b(Lcom/piriform/ccleaner/professional/c;)Lcom/piriform/ccleaner/professional/k$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/professional/k$a;->a()V

    .line 68
    :goto_1
    return-void

    :cond_1
    move v2, v0

    .line 2053
    goto :goto_0

    .line 2057
    :cond_2
    iget v2, p1, Lcom/piriform/ccleaner/i/c;->a:I

    const/16 v3, -0x3ed

    if-eq v2, v3, :cond_3

    iget v2, p1, Lcom/piriform/ccleaner/i/c;->a:I

    if-ne v2, v1, :cond_4

    :cond_3
    move v0, v1

    .line 58
    :cond_4
    if-eqz v0, :cond_5

    .line 59
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/c$1;->a:Lcom/piriform/ccleaner/professional/c;

    invoke-static {v0}, Lcom/piriform/ccleaner/professional/c;->a(Lcom/piriform/ccleaner/professional/c;)Lcom/piriform/ccleaner/b/a;

    move-result-object v0

    sget-object v1, Lcom/piriform/ccleaner/b/b;->aA:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 60
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/c$1;->a:Lcom/piriform/ccleaner/professional/c;

    invoke-static {v0}, Lcom/piriform/ccleaner/professional/c;->b(Lcom/piriform/ccleaner/professional/c;)Lcom/piriform/ccleaner/professional/k$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/professional/k$a;->b()V

    goto :goto_1

    .line 61
    :cond_5
    invoke-virtual {p1}, Lcom/piriform/ccleaner/i/c;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 62
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/c$1;->a:Lcom/piriform/ccleaner/professional/c;

    invoke-static {v0}, Lcom/piriform/ccleaner/professional/c;->a(Lcom/piriform/ccleaner/professional/c;)Lcom/piriform/ccleaner/b/a;

    move-result-object v0

    sget-object v1, Lcom/piriform/ccleaner/b/b;->aB:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 63
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/c$1;->a:Lcom/piriform/ccleaner/professional/c;

    invoke-static {v0}, Lcom/piriform/ccleaner/professional/c;->b(Lcom/piriform/ccleaner/professional/c;)Lcom/piriform/ccleaner/professional/k$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/professional/k$a;->c()V

    goto :goto_1

    .line 65
    :cond_6
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/c$1;->a:Lcom/piriform/ccleaner/professional/c;

    invoke-static {v0}, Lcom/piriform/ccleaner/professional/c;->a(Lcom/piriform/ccleaner/professional/c;)Lcom/piriform/ccleaner/b/a;

    move-result-object v0

    sget-object v1, Lcom/piriform/ccleaner/b/b;->aC:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 66
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/c$1;->a:Lcom/piriform/ccleaner/professional/c;

    invoke-static {v0}, Lcom/piriform/ccleaner/professional/c;->b(Lcom/piriform/ccleaner/professional/c;)Lcom/piriform/ccleaner/professional/k$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/professional/k$a;->d()V

    goto :goto_1
.end method
