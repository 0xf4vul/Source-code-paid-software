.class final Lcom/piriform/ccleaner/core/data/AndroidPackage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/core/data/AndroidPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2328
    new-instance v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/piriform/ccleaner/core/data/AndroidPackage;-><init>(Landroid/os/Parcel;B)V

    .line 326
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 326
    .line 1332
    new-array v0, p1, [Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 326
    return-object v0
.end method
