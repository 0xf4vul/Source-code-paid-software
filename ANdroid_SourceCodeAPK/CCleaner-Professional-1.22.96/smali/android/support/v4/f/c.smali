.class public final Landroid/support/v4/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/f/c$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/support/v4/f/d;)Landroid/os/Parcelable$Creator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/f/d",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 1028
    new-instance v0, Landroid/support/v4/f/e;

    invoke-direct {v0, p0}, Landroid/support/v4/f/e;-><init>(Landroid/support/v4/f/d;)V

    .line 39
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/f/c$a;

    invoke-direct {v0, p0}, Landroid/support/v4/f/c$a;-><init>(Landroid/support/v4/f/d;)V

    goto :goto_0
.end method
