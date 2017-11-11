.class public abstract Lf/i/b;
.super Lf/d;
.source "SourceFile"

# interfaces
.implements Lf/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lf/d",
        "<TR;>;",
        "Lf/e",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lf/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d$a",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lf/d;-><init>(Lf/d$a;)V

    .line 28
    return-void
.end method
