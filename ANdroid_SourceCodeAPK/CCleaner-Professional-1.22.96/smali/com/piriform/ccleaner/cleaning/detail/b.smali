.class public final Lcom/piriform/ccleaner/cleaning/detail/b;
.super Lcom/piriform/ccleaner/ui/fragment/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/ui/fragment/n",
        "<",
        "Lcom/piriform/ccleaner/a/a/y;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/n;-><init>()V

    return-void
.end method

.method public static v_()Lcom/piriform/ccleaner/cleaning/detail/b;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/piriform/ccleaner/cleaning/detail/b;

    invoke-direct {v0}, Lcom/piriform/ccleaner/cleaning/detail/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected final I()Lcom/piriform/ccleaner/a/h;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/piriform/ccleaner/a/h;->n:Lcom/piriform/ccleaner/a/h;

    return-object v0
.end method

.method protected final a(Landroid/content/ContentResolver;Lcom/piriform/ccleaner/f/m;)Lcom/piriform/ccleaner/f/p;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/piriform/ccleaner/f/u;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/cleaning/detail/b;->O()Lcom/piriform/ccleaner/f/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/piriform/ccleaner/f/d;->m()Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/piriform/ccleaner/f/r;

    invoke-direct {v2, p2}, Lcom/piriform/ccleaner/f/r;-><init>(Lcom/piriform/ccleaner/f/m;)V

    invoke-direct {v0, p2, v1, v2}, Lcom/piriform/ccleaner/f/u;-><init>(Lcom/piriform/ccleaner/f/m;Ljava/io/File;Lcom/piriform/ccleaner/v/b;)V

    return-object v0
.end method

.method protected final a(Lcom/piriform/ccleaner/f/j;)Lcom/piriform/ccleaner/ui/fragment/n;
    .locals 1

    .prologue
    .line 1023
    new-instance v0, Lcom/piriform/ccleaner/cleaning/detail/b;

    invoke-direct {v0}, Lcom/piriform/ccleaner/cleaning/detail/b;-><init>()V

    .line 1024
    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/cleaning/detail/b;->c(Lcom/piriform/ccleaner/f/j;)V

    .line 47
    return-object v0
.end method

.method protected final q_()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method
