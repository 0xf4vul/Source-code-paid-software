.class final Lf/d/a/l$c;
.super Lf/d/a/l$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/d/a/l$f",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lf/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lf/d/a/l$f;-><init>(Lf/i;)V

    .line 249
    return-void
.end method


# virtual methods
.method final e()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method
