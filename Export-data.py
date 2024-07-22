#Data export to big query
from mage_ai.settings.repo import get_repo_path
from mage_ai.io.bigquery import BigQuery
from mage_ai.io.config import ConfigFileLoader
from pandas import DataFrame
from os import path
from typing import Dict, Any
import pandas as pd
if 'data_exporter' not in globals():
    from mage_ai.data_preparation.decorators import data_exporter

@data_exporter
def export_data_to_big_query(dataframes: Dict[str, pd.DataFrame], **kwargs) -> None:
    """
    Template for exporting data to a BigQuery warehouse.
    Specify your configuration settings in 'io_config.yaml'.
    Docs: https://docs.mage.ai/design/data-loading#bigquery"""
    config_path = path.join('/home/hkkhadija99/uber-data-analysis', 'io_config.yaml')
    config_profile = 'default'
    for table_name, df in dataframes.items():
        # Construct the full table ID
        table_id = f'uber-data-analysis-429718.uber_data_analysis.{table_name}'

        # Export the DataFrame to BigQuery
        BigQuery.with_config(ConfigFileLoader(config_path, config_profile)).export(
            df,
            table_id,
            if_exists='replace',  # Specify resolution policy if table name already exists
        )
