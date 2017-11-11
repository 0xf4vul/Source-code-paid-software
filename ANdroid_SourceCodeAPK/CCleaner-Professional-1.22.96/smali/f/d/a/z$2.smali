.class public final Lf/d/a/z$2;
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
.field final synthetic a:Lf/d;


# direct methods
.method public constructor <init>(Lf/d;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lf/d/a/z$2;->a:Lf/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    .line 1062
    iget-object v0, p0, Lf/d/a/z$2;->a:Lf/d;

    .line 59
    return-object v0
.end method
