.class public final Lcom/google/android/gms/internal/zzfp;
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
            "Lcom/google/android/gms/internal/zzfp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:I

.field public final k:Ljava/lang/String;

.field public final l:I

.field public final m:I

.field public final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/tr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/tr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIIIIIILjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzfp;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/zzfp;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/zzfp;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/zzfp;->d:I

    iput p5, p0, Lcom/google/android/gms/internal/zzfp;->e:I

    iput p6, p0, Lcom/google/android/gms/internal/zzfp;->f:I

    iput p7, p0, Lcom/google/android/gms/internal/zzfp;->g:I

    iput p8, p0, Lcom/google/android/gms/internal/zzfp;->h:I

    iput-object p9, p0, Lcom/google/android/gms/internal/zzfp;->i:Ljava/lang/String;

    iput p10, p0, Lcom/google/android/gms/internal/zzfp;->j:I

    iput-object p11, p0, Lcom/google/android/gms/internal/zzfp;->k:Ljava/lang/String;

    iput p12, p0, Lcom/google/android/gms/internal/zzfp;->l:I

    iput p13, p0, Lcom/google/android/gms/internal/zzfp;->m:I

    iput-object p14, p0, Lcom/google/android/gms/internal/zzfp;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/search/a;)V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    .line 1000
    iget v0, p1, Lcom/google/android/gms/ads/search/a;->a:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->a:I

    .line 2000
    iget v0, p1, Lcom/google/android/gms/ads/search/a;->b:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->b:I

    .line 3000
    iget v0, p1, Lcom/google/android/gms/ads/search/a;->c:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->c:I

    .line 4000
    iget v0, p1, Lcom/google/android/gms/ads/search/a;->d:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->d:I

    .line 5000
    iget v0, p1, Lcom/google/android/gms/ads/search/a;->e:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->e:I

    .line 6000
    iget v0, p1, Lcom/google/android/gms/ads/search/a;->f:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->f:I

    .line 7000
    iget v0, p1, Lcom/google/android/gms/ads/search/a;->g:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->g:I

    .line 8000
    iget v0, p1, Lcom/google/android/gms/ads/search/a;->h:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->h:I

    .line 9000
    iget-object v0, p1, Lcom/google/android/gms/ads/search/a;->i:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzfp;->i:Ljava/lang/String;

    .line 10000
    iget v0, p1, Lcom/google/android/gms/ads/search/a;->j:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->j:I

    .line 11000
    iget-object v0, p1, Lcom/google/android/gms/ads/search/a;->k:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzfp;->k:Ljava/lang/String;

    .line 12000
    iget v0, p1, Lcom/google/android/gms/ads/search/a;->l:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->l:I

    .line 13000
    iget v0, p1, Lcom/google/android/gms/ads/search/a;->m:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->m:I

    .line 14000
    iget-object v0, p1, Lcom/google/android/gms/ads/search/a;->n:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzfp;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/tr;->a(Lcom/google/android/gms/internal/zzfp;Landroid/os/Parcel;)V

    return-void
.end method
