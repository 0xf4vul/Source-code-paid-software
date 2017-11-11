.class public Lcom/google/android/gms/internal/zzhc;
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
            "Lcom/google/android/gms/internal/zzhc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:I

.field public final d:Z

.field public final e:I

.field public final f:Lcom/google/android/gms/internal/zzft;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/vd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzhc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZIZILcom/google/android/gms/internal/zzft;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzhc;->a:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzhc;->b:Z

    iput p3, p0, Lcom/google/android/gms/internal/zzhc;->c:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzhc;->d:Z

    iput p5, p0, Lcom/google/android/gms/internal/zzhc;->e:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzhc;->f:Lcom/google/android/gms/internal/zzft;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/formats/b;)V
    .locals 7

    .prologue
    .line 0
    const/4 v1, 0x3

    .line 1000
    iget-boolean v2, p1, Lcom/google/android/gms/ads/formats/b;->a:Z

    .line 2000
    iget v3, p1, Lcom/google/android/gms/ads/formats/b;->b:I

    .line 3000
    iget-boolean v4, p1, Lcom/google/android/gms/ads/formats/b;->c:Z

    .line 4000
    iget v5, p1, Lcom/google/android/gms/ads/formats/b;->d:I

    .line 5000
    iget-object v0, p1, Lcom/google/android/gms/ads/formats/b;->e:Lcom/google/android/gms/ads/h;

    .line 0
    if-eqz v0, :cond_0

    new-instance v6, Lcom/google/android/gms/internal/zzft;

    .line 6000
    iget-object v0, p1, Lcom/google/android/gms/ads/formats/b;->e:Lcom/google/android/gms/ads/h;

    .line 0
    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/zzft;-><init>(Lcom/google/android/gms/ads/h;)V

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzhc;-><init>(IZIZILcom/google/android/gms/internal/zzft;)V

    return-void

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vd;->a(Lcom/google/android/gms/internal/zzhc;Landroid/os/Parcel;I)V

    return-void
.end method
