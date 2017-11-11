.class final Lcom/b/a/c/i$1;
.super Lc/a/a/a/a/c/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/c/i;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/a/a/c/g",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/c/i;


# direct methods
.method constructor <init>(Lcom/b/a/c/i;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcom/b/a/c/i$1;->a:Lcom/b/a/c/i;

    invoke-direct {p0}, Lc/a/a/a/a/c/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 681
    sget v0, Lc/a/a/a/a/c/e;->d:I

    return v0
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 673
    .line 1676
    iget-object v0, p0, Lcom/b/a/c/i$1;->a:Lcom/b/a/c/i;

    invoke-virtual {v0}, Lcom/b/a/c/i;->e()Ljava/lang/Void;

    move-result-object v0

    .line 673
    return-object v0
.end method
