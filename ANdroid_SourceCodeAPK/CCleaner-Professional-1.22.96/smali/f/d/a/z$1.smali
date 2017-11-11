.class public final Lf/d/a/z$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/e",
        "<",
        "Ljava/lang/Throwable;",
        "Lf/d",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lf/c/e;


# direct methods
.method public constructor <init>(Lf/c/e;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lf/d/a/z$1;->a:Lf/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    check-cast p1, Ljava/lang/Throwable;

    .line 1053
    iget-object v0, p0, Lf/d/a/z$1;->a:Lf/c/e;

    invoke-interface {v0, p1}, Lf/c/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lf/d;->a(Ljava/lang/Object;)Lf/d;

    move-result-object v0

    .line 50
    return-object v0
.end method
