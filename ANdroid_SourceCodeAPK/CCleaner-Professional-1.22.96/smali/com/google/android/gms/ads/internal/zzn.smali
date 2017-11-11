.class public final Lcom/google/android/gms/ads/internal/zzn;
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
            "Lcom/google/android/gms/ads/internal/zzn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:F

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/n;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/zzn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ZZLjava/lang/String;ZFI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzn;->a:Z

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/zzn;->b:Z

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzn;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/ads/internal/zzn;->d:Z

    iput p5, p0, Lcom/google/android/gms/ads/internal/zzn;->e:F

    iput p6, p0, Lcom/google/android/gms/ads/internal/zzn;->f:I

    return-void
.end method

.method public constructor <init>(ZZZFI)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzn;-><init>(ZZLjava/lang/String;ZFI)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/n;->a(Lcom/google/android/gms/ads/internal/zzn;Landroid/os/Parcel;)V

    return-void
.end method
