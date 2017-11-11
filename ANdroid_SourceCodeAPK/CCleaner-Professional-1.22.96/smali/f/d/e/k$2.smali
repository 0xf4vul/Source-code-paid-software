.class final Lf/d/e/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/d/e/k;->c(Lf/g;)Lf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/e",
        "<",
        "Lf/c/a;",
        "Lf/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lf/g;

.field final synthetic b:Lf/d/e/k;


# direct methods
.method constructor <init>(Lf/d/e/k;Lf/g;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lf/d/e/k$2;->b:Lf/d/e/k;

    iput-object p2, p0, Lf/d/e/k$2;->a:Lf/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 106
    check-cast p1, Lf/c/a;

    .line 1109
    iget-object v0, p0, Lf/d/e/k$2;->a:Lf/g;

    invoke-virtual {v0}, Lf/g;->a()Lf/g$a;

    move-result-object v0

    .line 1110
    new-instance v1, Lf/d/e/k$2$1;

    invoke-direct {v1, p0, p1, v0}, Lf/d/e/k$2$1;-><init>(Lf/d/e/k$2;Lf/c/a;Lf/g$a;)V

    invoke-virtual {v0, v1}, Lf/g$a;->a(Lf/c/a;)Lf/j;

    .line 106
    return-object v0
.end method
