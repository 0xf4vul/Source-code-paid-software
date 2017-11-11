.class final Lf/d/a/aa$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lf/d/a/aa$g;

    invoke-direct {v0}, Lf/d/a/aa$g;-><init>()V

    return-object v0
.end method
