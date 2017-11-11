.class public final Lcom/google/android/gms/internal/sh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field public a:J

.field public b:Landroid/os/Bundle;

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:I

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Lcom/google/android/gms/internal/zzfp;

.field public j:Landroid/location/Location;

.field public k:Ljava/lang/String;

.field public l:Landroid/os/Bundle;

.field public m:Landroid/os/Bundle;

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/sh;->a:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/sh;->b:Landroid/os/Bundle;

    iput v4, p0, Lcom/google/android/gms/internal/sh;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/sh;->d:Ljava/util/List;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/sh;->e:Z

    iput v4, p0, Lcom/google/android/gms/internal/sh;->f:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/sh;->g:Z

    iput-object v2, p0, Lcom/google/android/gms/internal/sh;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/sh;->i:Lcom/google/android/gms/internal/zzfp;

    iput-object v2, p0, Lcom/google/android/gms/internal/sh;->j:Landroid/location/Location;

    iput-object v2, p0, Lcom/google/android/gms/internal/sh;->k:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/sh;->l:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/sh;->m:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/sh;->n:Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/gms/internal/sh;->o:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/sh;->p:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/sh;->q:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzec;->b:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/sh;->a:J

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->c:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/sh;->b:Landroid/os/Bundle;

    iget v0, p1, Lcom/google/android/gms/internal/zzec;->d:I

    iput v0, p0, Lcom/google/android/gms/internal/sh;->c:I

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/sh;->d:Ljava/util/List;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzec;->f:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/sh;->e:Z

    iget v0, p1, Lcom/google/android/gms/internal/zzec;->g:I

    iput v0, p0, Lcom/google/android/gms/internal/sh;->f:I

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzec;->h:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/sh;->g:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/sh;->h:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->j:Lcom/google/android/gms/internal/zzfp;

    iput-object v0, p0, Lcom/google/android/gms/internal/sh;->i:Lcom/google/android/gms/internal/zzfp;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->k:Landroid/location/Location;

    iput-object v0, p0, Lcom/google/android/gms/internal/sh;->j:Landroid/location/Location;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/sh;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->m:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/sh;->l:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->n:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/sh;->m:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->o:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/sh;->n:Ljava/util/List;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/sh;->o:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/sh;->p:Ljava/lang/String;

    return-void
.end method
