.class public Lcom/google/android/gms/internal/zzbmh;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbmh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I
    .annotation runtime Lcom/google/android/gms/internal/gb;
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "authUri"
    .end annotation
.end field

.field c:Z
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "registered"
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "providerId"
    .end annotation
.end field

.field e:Z
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "forExistingProvider"
    .end annotation
.end field

.field f:Lcom/google/android/gms/internal/zzbmv;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "allProviders"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbmh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbmh;->a:I

    invoke-static {}, Lcom/google/android/gms/internal/zzbmv;->a()Lcom/google/android/gms/internal/zzbmv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmh;->f:Lcom/google/android/gms/internal/zzbmv;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZLjava/lang/String;ZLcom/google/android/gms/internal/zzbmv;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbmh;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbmh;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzbmh;->c:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbmh;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzbmh;->e:Z

    if-nez p6, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbmv;->a()Lcom/google/android/gms/internal/zzbmv;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmh;->f:Lcom/google/android/gms/internal/zzbmv;

    return-void

    :cond_0
    invoke-static {p6}, Lcom/google/android/gms/internal/zzbmv;->a(Lcom/google/android/gms/internal/zzbmv;)Lcom/google/android/gms/internal/zzbmv;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/gh;->a(Lcom/google/android/gms/internal/zzbmh;Landroid/os/Parcel;I)V

    return-void
.end method
