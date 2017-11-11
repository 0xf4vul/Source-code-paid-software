.class final Landroid/support/v4/app/i$a;
.super Landroid/support/v4/app/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/l",
        "<",
        "Landroid/support/v4/app/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/i;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/i;)V
    .locals 0

    .prologue
    .line 1009
    iput-object p1, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    .line 1010
    invoke-direct {p0, p1}, Landroid/support/v4/app/l;-><init>(Landroid/support/v4/app/i;)V

    .line 1011
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/support/v4/app/h;Landroid/content/Intent;I)V
    .locals 5

    .prologue
    const/4 v3, -0x1

    const v2, 0xfffe

    const/4 v4, 0x0

    .line 1047
    iget-object v1, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    .line 1929
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/support/v4/app/i;->b:Z

    .line 1931
    if-ne p3, v3, :cond_0

    .line 1932
    const/4 v0, -0x1

    :try_start_0
    invoke-static {v1, p2, v0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1940
    iput-boolean v4, v1, Landroid/support/v4/app/i;->b:Z

    .line 1941
    :goto_0
    return-void

    .line 1935
    :cond_0
    :try_start_1
    invoke-static {p3}, Landroid/support/v4/app/i;->a(I)V

    .line 1970
    iget-object v0, v1, Landroid/support/v4/app/i;->l:Landroid/support/v4/h/l;

    invoke-virtual {v0}, Landroid/support/v4/h/l;->b()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 1971
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Too many pending Fragment activity results."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1940
    :catchall_0
    move-exception v0

    iput-boolean v4, v1, Landroid/support/v4/app/i;->b:Z

    throw v0

    .line 1975
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, v1, Landroid/support/v4/app/i;->l:Landroid/support/v4/h/l;

    iget v2, v1, Landroid/support/v4/app/i;->k:I

    .line 2276
    iget-boolean v3, v0, Landroid/support/v4/h/l;->a:Z

    if-eqz v3, :cond_2

    .line 2277
    invoke-virtual {v0}, Landroid/support/v4/h/l;->a()V

    .line 2280
    :cond_2
    iget-object v3, v0, Landroid/support/v4/h/l;->b:[I

    iget v0, v0, Landroid/support/v4/h/l;->c:I

    invoke-static {v3, v0, v2}, Landroid/support/v4/h/c;->a([III)I

    move-result v0

    .line 1975
    if-ltz v0, :cond_3

    .line 1976
    iget v0, v1, Landroid/support/v4/app/i;->k:I

    add-int/lit8 v0, v0, 0x1

    const v2, 0xfffe

    rem-int/2addr v0, v2

    iput v0, v1, Landroid/support/v4/app/i;->k:I

    goto :goto_1

    .line 1980
    :cond_3
    iget v0, v1, Landroid/support/v4/app/i;->k:I

    .line 1981
    iget-object v2, v1, Landroid/support/v4/app/i;->l:Landroid/support/v4/h/l;

    iget-object v3, p1, Landroid/support/v4/app/h;->o:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/h/l;->a(ILjava/lang/Object;)V

    .line 1982
    iget v2, v1, Landroid/support/v4/app/i;->k:I

    add-int/lit8 v2, v2, 0x1

    const v3, 0xfffe

    rem-int/2addr v2, v3

    iput v2, v1, Landroid/support/v4/app/i;->k:I

    .line 1937
    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v2, 0xffff

    and-int/2addr v2, p3

    add-int/2addr v0, v2

    invoke-static {v1, p2, v0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1940
    iput-boolean v4, v1, Landroid/support/v4/app/i;->b:Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1016
    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/support/v4/app/i;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1017
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1096
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 1026
    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->A_()V

    .line 1037
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1079
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method
