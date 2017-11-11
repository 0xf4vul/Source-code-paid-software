.class final Lf/c/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/c/h;->a(Lf/c/f;)Lf/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/g",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lf/c/f;


# direct methods
.method constructor <init>(Lf/c/f;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lf/c/h$1;->a:Lf/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 85
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Func2 expecting 2 arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p0, Lf/c/h$1;->a:Lf/c/f;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-interface {v0, v1, v2}, Lf/c/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
