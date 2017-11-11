.class public Lcom/google/android/gms/internal/zzbmr;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbmr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbmp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbmr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbmr;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmr;->b:Ljava/util/List;

    return-void
.end method

.method constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbmp;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbmr;->a:I

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmr;->b:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmr;->b:Ljava/util/List;

    goto :goto_0
.end method

.method public static a()Lcom/google/android/gms/internal/zzbmr;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbmr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbmr;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/zzbmr;)Lcom/google/android/gms/internal/zzbmr;
    .locals 3

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmr;->b:Ljava/util/List;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/zzbmr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbmr;-><init>()V

    if-eqz v0, :cond_0

    .line 2000
    iget-object v2, v1, Lcom/google/android/gms/internal/zzbmr;->b:Ljava/util/List;

    .line 0
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/gm;->a(Lcom/google/android/gms/internal/zzbmr;Landroid/os/Parcel;)V

    return-void
.end method
