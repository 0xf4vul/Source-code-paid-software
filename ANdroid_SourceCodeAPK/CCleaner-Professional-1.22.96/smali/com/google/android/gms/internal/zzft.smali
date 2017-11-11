.class public Lcom/google/android/gms/internal/zzft;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzft;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/tt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/tt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzft;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/h;)V
    .locals 1

    .prologue
    .line 0
    .line 1000
    iget-boolean v0, p1, Lcom/google/android/gms/ads/h;->a:Z

    .line 0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzft;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzft;->a:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/tt;->a(Lcom/google/android/gms/internal/zzft;Landroid/os/Parcel;)V

    return-void
.end method
