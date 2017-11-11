.class final Lf/d/a/aa$f;
.super Lf/d/a/aa$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/d/a/aa$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 1201
    invoke-direct {p0}, Lf/d/a/aa$a;-><init>()V

    .line 1202
    iput p1, p0, Lf/d/a/aa$f;->e:I

    .line 1203
    return-void
.end method


# virtual methods
.method final b()V
    .locals 2

    .prologue
    .line 1208
    iget v0, p0, Lf/d/a/aa$f;->c:I

    iget v1, p0, Lf/d/a/aa$f;->e:I

    if-le v0, v1, :cond_1

    .line 1988
    invoke-virtual {p0}, Lf/d/a/aa$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/a/aa$c;

    .line 1989
    invoke-virtual {v0}, Lf/d/a/aa$c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/a/aa$c;

    .line 1990
    if-nez v0, :cond_0

    .line 1991
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Empty list!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1993
    :cond_0
    iget v1, p0, Lf/d/a/aa$a;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lf/d/a/aa$a;->c:I

    .line 2013
    invoke-virtual {p0, v0}, Lf/d/a/aa$a;->set(Ljava/lang/Object;)V

    .line 1211
    :cond_1
    return-void
.end method
