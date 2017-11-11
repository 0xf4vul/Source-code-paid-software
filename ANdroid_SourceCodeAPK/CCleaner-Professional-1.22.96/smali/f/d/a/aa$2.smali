.class final Lf/d/a/aa$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/d/a/aa;->a(Lf/d;I)Lf/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/d",
        "<",
        "Lf/d/a/aa$d",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 148
    iput p1, p0, Lf/d/a/aa$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 148
    .line 1151
    new-instance v0, Lf/d/a/aa$f;

    iget v1, p0, Lf/d/a/aa$2;->a:I

    invoke-direct {v0, v1}, Lf/d/a/aa$f;-><init>(I)V

    .line 148
    return-object v0
.end method
